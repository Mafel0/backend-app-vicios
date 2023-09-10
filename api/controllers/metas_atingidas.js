import { db } from "../db.js";

export const getAllMetasAtingidas = (_, res) => {
    const q = "SELECT * FROM metas_atingidas";

    db.query(q, (err, data) => {
        if (err) return res.json(err);

        return res.status(200).json(data);
    });
};

export const getMetasAtingidas = (req, res) => {
    const q = "SELECT * FROM metas_atingidas WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Metas do usuário visualizado com sucesso.");
    });
  };

export const addMetasAtingidas = (req, res) => {
    const q =
      "INSERT INTO metas_atingidas(`id_metas`,`id_vicio_user`) VALUES(?)";
  
    const values = [
      req.body.id_metas,
      req.body.id_vicio_user
    ];
  
    db.query(q, [values], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Meta atingida registrada com sucesso.");
    });
  };
  
  export const updateMetasAtingidas = (req, res) => {
    const q =
      "UPDATE metas_atingidas SET `id_meta` = ?, `id_vicio_user` = ? WHERE `id` = ?";
  
    const values = [
      req.body.id_metas,
      req.body.id_vicio_user
    ];
  
    db.query(q, [...values, req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Meta do usuário atualizada com sucesso.");
    });
  };
  
  export const deleteMetasAtingidas = (req, res) => {
    const q = "DELETE FROM metas_atingidas WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Meta do usuário deletada com sucesso.");
    });
  };