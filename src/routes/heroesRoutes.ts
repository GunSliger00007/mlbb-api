import express from "express";
import { getAllHeroes, getHeroById } from "@/controllers/heroController.js";

const router = express.Router();

router.get("/", getAllHeroes);
router.get("/:id", getHeroById);

export default router;