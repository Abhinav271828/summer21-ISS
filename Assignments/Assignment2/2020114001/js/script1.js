document.getElementsByTagName("nav")[0].style.position = "fixed";

function turn_y(elem)
{
    elem.style.color = "yellow";
}

function turn_w(elem)
{
    elem.style.color = "white";
}

skills = {};

function addRow()
{
    var name = document.getElementById("name").value;
    var skill = document.getElementById("skill").value;
    var dd = document.getElementById("level");
    var prof = dd.options[dd.selectedIndex].value;
    document.getElementsByTagName("form")[0].reset();

    skills[name] = [skill,prof];

    console.log(skills);

    var table = document.getElementsByTagName("table")[0];
    var rows = table.rows.length;
    for (let i = 0; i < rows - 1; i++)
    {
        table.deleteRow(1);
    }
    var i = 1;
    for (var key in skills)
    {   
        console.log(key);
        console.log(skills[key]);
        row = table.insertRow(i); i++;
        first = row.insertCell(0);
        second = row.insertCell(1);
        third = row.insertCell(2);
        first.innerHTML = key;
        second.innerHTML = skills[key][0];
        third.innerHTML = skills[key][1];
    }
}

captions = ["Teachers' Day at School", "Lockdown Calls", "Lityaksh :)", "Partying", "Fam Jam"];
slides = ["../img/pic1.jpg", "../img/pic2.png", "../img/pic3.png", "../img/pic4.jpg", "../img/pic5.jpg"];
i = 0;

function nextImg()
{
    i = (i + 1) % 5;
    document.getElementsByTagName("img")[0].src = slides[i];
    document.getElementsByTagName("figcaption")[0].innerHTML = captions[i];
}
