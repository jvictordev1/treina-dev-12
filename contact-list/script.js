let contactList = [
  {
    name: "Andre Schulz",
    email: "andre@gmail.com",
    city: "Berlin",
    country: "Germany",
    state: "Berlin",
    photo:
      "https://cdn.pixabay.com/photo/2024/03/09/02/26/bird-8621836_1280.jpg",
  },
  {
    name: "Fernanda Schulz",
    email: "fernanda@gmail.com",
    city: "Dublin",
    country: "Ireland",
    state: "Leinster",
    photo:
      "https://cdn.pixabay.com/photo/2024/03/09/02/26/bird-8621836_1280.jpg",
  },
];
list = document.getElementById("contact-list");
loadContacts = document.getElementById("load-contacts");

loadContacts.addEventListener("click", () => {
  contactList.forEach((contact) => {
    let item = document.createElement("li");
    item.innerHTML = `
				<div>
				  <img
					width="300"
					src=${contact.photo}
					alt="${contact.name} photo"
				  />
				  <h2>${contact.name}</h2>
				  <span>${contact.email}</span>
				  <p>${contact.city} | ${contact.state} | ${contact.country}</p>
				</div>
		`;
    list.appendChild(item);
  });
});
