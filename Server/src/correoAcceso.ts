import dotenv from 'dotenv';
dotenv.config();
var email = require("emailjs/email");
console.log("Hi from emailAccess");

function enviarCorreo(body: any) { 
    var server = email.server.connect( {
        user: "webproyecto03@gmail.com",
        password: "kgvwjiujyocuuitr",
        host: "smtp.gmail.com",
        tls: {
            rejectUnauthorized: false
        }
    });

    var message = {
        from: "webproyecto03@gmail.com",
        to: "<" + body.Email + ">",
        bbc: "",
        subject: "Testing!",
        attachment: [
            {data: '<a href="https://www.google.com">Click aqui<a/>', alternative: true}
        ]
    };

    server.send(message, function(err: any, message: any) {
        if (err) {
            console.error("Error sending email:", err);
        } else {
            console.log("Email sent successfully!");
        }
    });
}

module.exports = enviarCorreo;