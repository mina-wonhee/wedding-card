
function copyToClipboard(textValue) {
    print(textValue);
    var aux = document.createElement("input");
    aux.setAttribute("value", textValue);
    document.body.appendChild(aux);
    aux.select();
    document.execCommand("copy");
    document.body.removeChild(aux);
    alert(textValue + " 복사되었습니다.");
}