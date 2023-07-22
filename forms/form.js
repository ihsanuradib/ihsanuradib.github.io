const name = document.getElementById("name");
const email = document.getElementById("email");
const subject = document.getElementById("subject");
const message = document.getElementById("message");
const document = document.getElementById("submit");

const submit = document.getElementsByClassName('form-contact')[0];

submit.addEventListener('submit',(e)=>{
    e.preventDefault();
    console.log("Clicked");
    email.send({
        secureToken: "9CCD98B7BBA16D66CD1189DFA98901438027",
        To : 'myusupalfahrizi@gmail.com',
        From : 'myusupalfahrizi@gmail.com',
        Subject : "This is the subject",
        Body : "Name: " + document.getElementById("name").value
          + "<br> Email: " + document.getElementById("email").value
          + "<br> Subject: " + document.getElementById("subject").value
          + "<br> Message: " + document.getElementById("message").value
      }).then(
      message => alert(message)
      );
});