import { Client } from 'whatsapp-web.js';
const qrcode = require('qrcode-terminal');

const client = new Client({
    puppeteer: { args: ['--no-sandbox', '--disable-setuid-sandbox'] },
});

client.once('ready', () => {
    console.log('Client is ready!');
});

client.on('message_create', message => {
	console.log(message.body);
});

client.on('qr', (qr) => {
    console.log('QR RECEIVED');
    qrcode.generate(qr, {small: true});

});

client.initialize();