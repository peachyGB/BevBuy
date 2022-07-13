import React from "react";
import IngredientTile from "./IngredientTile";

function DrinkBuilder({ ingredientsList }) {
  const base = ingredientsList.filter((item) => item.category === "Base");
  const filler = ingredientsList.filter((item) => item.category === "Creamer");
  const flavor = ingredientsList.filter((item) => item.category === "Flavor");
  const sweetner = ingredientsList.filter(
    (item) => item.category === "Sweetner"
  );

  const mappedBase = base.map((ingredient) => (
    <IngredientTile
      key={ingredient.id}
      id={ingredient.id}
      name={ingredient.name}
      category={ingredient.category}
      cost={ingredient.cost}
      points={ingredient.points}
    />
  ));

  const mappedFiller = filler.map((ingredient) => (
    <IngredientTile
      key={ingredient.id}
      id={ingredient.id}
      name={ingredient.name}
      category={ingredient.category}
      cost={ingredient.cost}
      points={ingredient.points}
    />
  ));
  const mappedSweetner = sweetner.map((ingredient) => (
    <IngredientTile
      key={ingredient.id}
      id={ingredient.id}
      name={ingredient.name}
      category={ingredient.category}
      cost={ingredient.cost}
      points={ingredient.points}
    />
  ));

  const mappedFlavor = flavor.map((ingredient) => (
    <IngredientTile
      key={ingredient.id}
      id={ingredient.id}
      name={ingredient.name}
      category={ingredient.category}
      cost={ingredient.cost}
      points={ingredient.points}
    />
  ));

  return (
    <div className="DrinkBuilder">
      <h2>Base</h2>
      <div className="grid-container">{mappedBase}</div>
      <h2>Filler</h2>
      <div className="grid-container">{mappedFiller}</div>
      <h2>Sweetner</h2>
      <div className="grid-container">{mappedSweetner}</div>
      <h2>Flavor</h2>
      <div className="grid-container">{mappedFlavor}</div>
    </div>
  );
}

export default DrinkBuilder;

// onClicks - for sections that allow multibple items
//if selectd ? remve from drink, set to unselected : add to drink, set to selected

// onClicks - for sections that allow one selection (Base)
//if selectd  setState to new item
