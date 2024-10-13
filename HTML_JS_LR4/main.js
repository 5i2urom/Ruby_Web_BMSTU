var num=1

function add() {
    product=document.getElementById("product")
    price=document.getElementById("price")
    if (/^\d+$/.test(price.value)) {

        newr=document.createElement("tr")
        document.getElementById("dataTable").getElementsByTagName("tbody")[0].appendChild(newr)

        newNum=document.createElement("td")    
        newNum.innerHTML=num
        num=num+1
        newr.appendChild(newNum)

        newProd=document.createElement("td")
        newProd.innerHTML=product.value
        newr.appendChild(newProd)

        newPrice=document.createElement("td")
        newPrice.innerHTML=price.value
        newPrice.id="makeColor"
        newr.appendChild(newPrice)

        newr.onclick=function() {
            boxAdd(this)
        }

        product.value=""
        price.value=""
    }

    else {
        alert("Введите число!")
        price.value=""
    }

}

var c=0

function boxAdd(el) {

    newrB=document.createElement("tr")
    document.getElementById("boxTable").getElementsByTagName("tbody")[0].appendChild(newrB)

    newNumB=document.createElement("td")    
    newNumB.innerHTML=el.firstChild.innerHTML
    newrB.appendChild(newNumB)

    newProdB=document.createElement("td")
    newProdB.innerHTML=el.children[1].innerHTML
    newrB.appendChild(newProdB)

    newPriceB=document.createElement("td")
    newPriceB.innerHTML=el.lastChild.innerHTML
    newPriceB.id="makeColor2"
    newrB.appendChild(newPriceB)

    c+=parseInt(el.lastChild.innerHTML)
}

function count() {
        document.getElementById("message").innerHTML='Стоимость заказа - ' + c
    }
