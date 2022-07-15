import React from "react";

function CartItems({ id, size, ingredients, handleDelete }) {
  function handleDeleteClick() {
    console.log(id);

    fetch(`http://localhost:3000/drinks/${id}`, {
      method: "DELETE",
    })
      .then((r) => r.json())
      .then(() => handleDelete(id));
  }
  return (
    <div>
      <button type="button" className="edit-btn" onClick={handleDeleteClick}>
        X
      </button>
      <span>
        Size: {size} Ingredients: {ingredients.map((ingr) => ` ${ingr.name}`)}
      </span>
    </div>
  );
}

export default CartItems;
