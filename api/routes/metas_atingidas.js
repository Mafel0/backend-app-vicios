import express from "express";
import {getMetasAtingidas, getAllMetasAtingidas, addMetasAtingidas, updateMetasAtingidas, deleteMetasAtingidas} from "../controllers/metas_atingidas.js";

const router = express.Router();

router.get("/", getAllMetasAtingidas);

router.get("/:id", getMetasAtingidas);

router.post("/", addMetasAtingidas);

router.put("/:id", updateMetasAtingidas);

router.delete("/:id", deleteMetasAtingidas);

export default router