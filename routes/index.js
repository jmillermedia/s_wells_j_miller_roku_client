const express = require('express');
const router = express.Router();

// this is where we would add our middleware
const { createProxyMiddleware } = require('http-proxy-middleware');

router.use('/api', createProxyMiddleware({
    target: 'http://localhost:5000',
    headers: {
        accept: 'application/json, application/x-www-form-urlencoded'
    },
    changeOrigin: true
}))

router.get('/', (req, res) => {
    res.render('index', { layout: 'layout.hbs' });
})

// other routes you might use

router.use((req, res) => {
    res.status(404);
    res.render('error', { layout: 'errorlayout.hbs', errormessage: `You've lost your way!` })
})

module.exports = router;