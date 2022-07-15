import React, { useState, useEffect } from "react";
import CartItems from "./CartItems";

function Cart() {
  const [drinksInfo, setDrinksInfo] = useState([]);

  let userID = 1;

  useEffect(() => {
    fetch(`http://localhost:3000/users/${userID}}/drinks`)
      .then((r) => r.json())
      .then((data) => setDrinksInfo(data));
  }, []);

  //DELETES A DRINK FROM THE USER
  function handleDelete(id) {
    console.log(id);
    const shortenedList = drinksInfo.filter((drink) => {
      return drink.id !== id;
    });
    setDrinksInfo(shortenedList);
  }

  // SHOWS EACH DRINK AND ITS DETAILS IN THE CART
  let drinksDisplay = drinksInfo.map((drink) => (
    <CartItems
      key={drink.id}
      id={drink.id}
      size={drink.size}
      ingredients={drink.ingredients}
      handleDelete={handleDelete}
    />
  ));

  return (
    <div className="cart">
      <h1>Cart</h1>
      <div>Drinks</div>
      <div>{drinksDisplay}</div>
    </div>
  );
}

export default Cart;
