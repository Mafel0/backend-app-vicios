import express from "express";
import {getMotivos, getAllMotivos, addMotivos, updateMotivos, deleteMotivos} from "../controllers/motivos.js";

const router = express.Router();

router.get("/", getAllMotivos);

router.get("/:id", getMotivos);

router.post("/", addMotivos);

router.put("/:id", updateMotivos);

router.delete("/:id", deleteMotivos);

export default router