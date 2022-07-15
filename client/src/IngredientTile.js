import React, { useState } from "react";

function IngredientTile({ id, name, category, cost, points, drinkID }) {
  const [customizationID, setCustomizationID] = useState();

  function handleChange(e) {
    e.target.checked ? postRequest() : deleteRequest();
  }
  const itemToPost = { drink_id: drinkID, ingredient_id: id };

  function postRequest() {
    fetch("http://localhost:3000/customizations", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(itemToPost),
    })
      .then((r) => r.json())
      .then((data) => setCustomizationID(data.id));
  }

  function deleteRequest() {
    fetch(`http://localhost:3000/customizations/${customizationID}`, {
      method: "DELETE",
    })
      .then((r) => r.json())
      .then((data) => console.log(data));
  }

  return (
    <label className="grid-item" for={name}>
      <div>
        <div>{name}</div>
      </div>
      <input
        type="checkbox"
        id={name}
        name={category}
        value={id}
        onChange={handleChange}
      ></input>
    </label>
  );
}

export default IngredientTile;
