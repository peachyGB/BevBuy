import React from "react";

function IngredientTile({ id, name, category, cost, points }) {
  // function

  return (
    <div className="grid-item" onClick={() => console.log("hi")}>
      <div>{name}</div>
      <div>$ {cost} .00</div>
    </div>
  );
}

export default IngredientTile;
