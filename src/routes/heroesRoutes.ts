import express from "express";

const router = express.Router();

router.get("/", (req, res) => {
  res.json({
    message: 'Assume all the heroes are here'
  });
});

export default router;