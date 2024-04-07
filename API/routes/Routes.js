const express = require('express');
const recipesController = require('../controllers/RecipeController');

const router = express.Router();

// Route to fetch all recipes
router.get('/recipes', recipesController.getAllRecipes);

// Route to fetch a recipe by reference_id
router.get('/recipes/:id', recipesController.getRecipeById);

// Route to fetch recipes by course name
router.get('/recipes/course/:courseName', recipesController.getRecipesByCourse);

// Route to search dishes by name
router.get('/recipes/search/:dishName', recipesController.searchDishesByName);

module.exports = router;
