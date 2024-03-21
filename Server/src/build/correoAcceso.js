"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const dotenv_1 = __importDefault(require("dotenv"));
dotenv_1.default.config();
var email = require("emailjs/email");
console.log("Hi from emailAccess");
function enviarCorreo(body) {
    var server = email.server.connect({
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
            { data: '<a href="https://www.google.com">Click aqui<a/>', alternative: true }
        ]
    };
    server.send(message, function (err, message) {
        if (err) {
            console.error("Error sending email:", err);
        }
        else {
            console.log("Email sent successfully!");
        }
    });
}
module.exports = enviarCorreo;
