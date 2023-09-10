import { db } from "../db.js";

export const getAllMetas = (_, res) => {
    const q = "SELECT * FROM metas";

    db.query(q, (err, data) => {
        if (err) return res.json(err);

        return res.status(200).json(data);
    });
};

export const getMetas = (req, res) => {
    const q = "SELECT * FROM metas WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Metas visualizadas com sucesso.");
    });
  };

export const addMetas = (req, res) => {
    const q =
      "INSERT INTO metas(`id_vicio_user`, `titulo`) VALUES(?)";
  
    const values = [
      req.body.id_vicio_user,
      req.body.titulo,
    ];
  
    db.query(q, [values], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Meta registrada com sucesso.");
    });
  };
  
  export const updateMetas = (req, res) => {
    const q =
      "UPDATE metas SET `id_vicio_user` = ?, `titulo` = ? WHERE `id` = ?";
  
    const values = [
      req.body.id_vicio_user,
      req.body.titulo
    ];
  
    db.query(q, [...values, req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Meta atualizada com sucesso.");
    });
  };
  
  export const deleteMetas = (req, res) => {
    const q = "DELETE FROM metas WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Meta deletada com sucesso.");
    });
  };