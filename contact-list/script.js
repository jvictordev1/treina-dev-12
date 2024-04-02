list = document.getElementById("contact-list");
loadContacts = document.getElementById("load-contacts");

async function findContacts() {
  const res = await fetch("https://randomuser.me/api/?results=5");
  const data = await res.json();
  console.log(data.results);
  if (res.status === 200) {
    let contactList = data.results;
    contactList.forEach((contact) => {
      let item = document.createElement("li");
      item.innerHTML = `
      <div>
        <img
        width="200"
   			src=${contact.picture.large}
   			alt="${contact.name.first} ${contact.name.last} photo"
   			/>
   			<h2>${contact.name.first} ${contact.name.last}</h2>
   			<span>${contact.email}</span>
   			<p>${contact.location.city} | ${contact.location.state} | ${contact.location.country}</p>
   		</div>
  	`;
      list.appendChild(item);
    });
  }
}

loadContacts.addEventListener("click", () => {
  findContacts();
  // contactList.forEach((contact) => {
  //   let item = document.createElement("li");
  //   item.innerHTML = `
  // 			<div>
  // 			  <img
  // 				width="300"
  // 				src=${contact.photo}
  // 				alt="${contact.name} photo"
  // 			  />
  // 			  <h2>${contact.name}</h2>
  // 			  <span>${contact.email}</span>
  // 			  <p>${contact.city} | ${contact.state} | ${contact.country}</p>
  // 			</div>
  // 	`;
  //   list.appendChild(item);
  // });
});
