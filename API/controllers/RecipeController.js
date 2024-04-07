const recipes = require('../dummyData'); // Adjust the path as needed
const Fuse = require('fuse.js');

// Controller function to fetch all recipes
const getAllRecipes = (req, res) => {
  try {
    res.status(200).json(recipes);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Controller function to fetch a recipe by reference_id
const getRecipeById = (req, res) => {
  const { id } = req.params;
  const recipe = recipes.find((recipe) => recipe.reference_id === id);
  try {
    if (recipe) {
      res.status(200).json(recipe);
    } else {
      res.status(404).json({ message: 'Recipe not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Controller function to fetch recipes by course name
const getRecipesByCourse = (req, res) => {
  const { courseName } = req.params;
  const filteredRecipes = recipes.filter(
    (recipe) => recipe.course_name.toLowerCase() === courseName.toLowerCase()
  );
  try {
    if (filteredRecipes.length > 0) {
      res.status(200).json(filteredRecipes);
    } else {
      res.status(404).json({ message: 'No recipes found for this course' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Controller function to search dishes by name using fuzzy search
const searchDishesByName = (req, res) => {
  const { dishName } = req.params;
  if (!dishName) {
    return res.status(400).json({ message: 'Dish name parameter is required' });
  }

  const options = {
    keys: ['dish_name'],
    threshold: 0.3, // Adjust this threshold to control the fuzziness of the search
  };

  const fuse = new Fuse(recipes, options);
  const result = fuse.search(dishName);

  try {
    if (result.length > 0) {
      res.status(200).json(result);
    } else {
      res.status(404).json({ message: 'No dishes found matching the name' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

module.exports = {
  getAllRecipes,
  getRecipeById,
  getRecipesByCourse,
  searchDishesByName
};
