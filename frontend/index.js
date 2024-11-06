function selectCity(city){
    //send to server
    fetch(`/city?name=${encodeURIComponent(city)}`, {
        method: "GET"
    })
    .then(response => response.json()) //Get ansver from server
    .then(data => { //handle the answer
        const front = document.getElementById("header");
        front.innerHTML=city;

        /*const flowers = document.createElement("h2");
        flowers.innerHTML("House Plants");*/

        clearTable();
        createTable(data[0], "House plants");
        createTable(data[1], "Bouquets");
        createTable(data[2], "Cards");
        createTable(data[3], "Pots");

        //pots
        //Other care items
    })
    .catch(error => {
        console.error("Error:", error);
    });
}

function clearTable(){
    const tableContainer = document.getElementById("tableContainer");
    tableContainer.innerHTML=""
}

function createTable(data, header) {
    const tableHeader = document.createElement("h3");
    tableHeader.textContent = header;
    tableContainer.appendChild(tableHeader);
    //tableContainer.innerHTML=""
    const objectLength = Object.keys(data[1]).length;

    const table= document.createElement("table");
    const headerRow = document.createElement("tr");
    let headers;

    if (objectLength === 5){
        headers = ["id", "name", "description", "price", "stock"];
    }
    else {
        headers = ["id", "name", "description", "small", "regular", 'big'];
    }
    //Creating header row
    
    headers.forEach(headerText => {
        const header = document.createElement("th");
        header.textContent = headerText;
        headerRow.appendChild(header);
    });

    table.appendChild(headerRow);
    data.forEach(item => {
        const row = document.createElement("tr");

        Object.values(item).forEach(info => {
            const cell = document.createElement("td");
            cell.textContent = info;
            row.appendChild(cell);
        });

        table.appendChild(row);
    });

    tableContainer.appendChild(table);
}