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
    res.render('index', {message: "Hello from Handlebars!"});
})

module.exports = router;