import express from "express";
import userRoutes from "./routes/vicios_do_user.js";
import viciosRoutes from "./routes/vicios.js";
import anotacoesRoutes from "./routes/anotacoes.js";
import recaidasRoutes from "./routes/recaidas.js";
import motivosRoutes from "./routes/motivos.js";
import metasRoutes from "./routes/metas.js";
import metasAtingidasRoutes from "./routes/metas_atingidas.js";
import cors from "cors";

const app = express();

app.use(express.json());
app.use(cors());

app.use("/vicios-usuario", userRoutes);
app.use("/vicios-sistema", viciosRoutes);
app.use("/anotacoes", anotacoesRoutes);
app.use("/recaidas", recaidasRoutes);
app.use("/motivos", motivosRoutes);
app.use("/metas", metasRoutes);
app.use("/metas-atingidas", metasAtingidasRoutes);

app.listen(5100);