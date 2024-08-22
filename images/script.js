document.addEventListener("DOMContentLoaded", function() 
{
  let room=document.getElementById("form")
  let btn=document.getElementById("btn")


function f1(){
    room.action="book.jsp";
    btn.type="submit"
    // room.type="submit";
    room.submit();
    
}
function f2(){
    room.action="vacant.jsp";
    btn.type="submit"
    // room.type="submit";
    room.submit();
}
});
// document.addEventListener("DOMContentLoaded", function() {
//     let room = document.getElementById("form");

//     function f1() {
//         room.action = "book.jsp";
//         room.submit();
//     }

//     function f2() {
//         room.action = "vacant.jsp";
//         room.submit();
//     }
    
//     // Attach the functions to the buttons
//     document.querySelector('button[onclick="f1()"]').onclick = f1;
//     document.querySelector('button[onclick="f2()"]').onclick = f2;
// });

