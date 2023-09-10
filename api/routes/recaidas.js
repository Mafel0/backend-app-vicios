import express from "express";
import {getRecaidas, getAllRecaidas, addRecaidas, updateRecaidas, deleteRecaidas} from "../controllers/recaidas.js";

const router = express.Router();

router.get("/", getAllRecaidas);

router.get("/:id", getRecaidas);

router.post("/", addRecaidas);

router.put("/:id", updateRecaidas);

router.delete("/:id", deleteRecaidas);

export default router