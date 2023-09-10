import express from "express";
import {getAnotacoes, getAllAnotacoes, addAnotacoes, updateAnotacoes, deleteAnotacoes} from "../controllers/anotacoes.js";

const router = express.Router();

router.get("/", getAllAnotacoes);

router.get("/:id", getAnotacoes);

router.post("/", addAnotacoes);

router.put("/:id", updateAnotacoes);

router.delete("/:id", deleteAnotacoes);

export default router