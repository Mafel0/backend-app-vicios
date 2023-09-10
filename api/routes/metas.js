import express from "express";
import {getMetas, getAllMetas, addMetas, updateMetas, deleteMetas} from "../controllers/metas.js";

const router = express.Router();

router.get("/", getAllMetas);

router.get("/:id", getMetas);

router.post("/", addMetas);

router.put("/:id", updateMetas);

router.delete("/:id", deleteMetas);

export default router