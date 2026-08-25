import express from "express";

const nightlyRouter = express.Router();

nightlyRouter.get("/", (req, res) => {
    res.json({
        message: 'Welcome to the MLBB API (Nightly)'
    });
});

export default nightlyRouter;