export const fetchAllShoes = () => (
    $.ajax({
        method: 'GET', 
        url: 'api/shoes'
    })
);

export const fetchShoe = (shoeId) => (
    $.ajax({
        method: 'GET', 
        url: `api/shoes/${shoeId}`
    })
);