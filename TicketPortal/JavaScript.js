var table = document.getElementById('table'), rIndex;
for (var i = 0; i < table.rows.length; i++) {
    table.rows[i].onclick = function () {
        rIndex = this.rowIndex;
        console.log(rIndex);
        document.getElementById('txtID').value = this.cells[0].innerHTML;
    }
}