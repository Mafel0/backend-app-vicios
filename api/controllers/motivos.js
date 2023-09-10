import { db } from "../db.js";

export const getAllMotivos = (_, res) => {
    const q = "SELECT * FROM motivos";

    db.query(q, (err, data) => {
        if (err) return res.json(err);

        return res.status(200).json(data);
    });
};

export const getMotivos = (req, res) => {
    const q = "SELECT * FROM motivos WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Motivos do usuário visualizado com sucesso.");
    });
  };

export const addMotivos = (req, res) => {
    const q =
      "INSERT INTO motivos(`id_vicio_user`, `texto`) VALUES(?)";
  
    const values = [
      req.body.id_vicio_user,
      req.body.texto,
    ];
  
    db.query(q, [values], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Motivo registrado com sucesso.");
    });
  };
  
  export const updateMotivos = (req, res) => {
    const q =
      "UPDATE motivos SET `id_vicio_user` = ?, `texto` = ? WHERE `id` = ?";
  
    const values = [
      req.body.id_vicio_user,
      req.body.texto
    ];
  
    db.query(q, [...values, req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Motivo atualizada com sucesso.");
    });
  };
  
  export const deleteMotivos = (req, res) => {
    const q = "DELETE FROM motivos WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Motivo do usuário deletado com sucesso.");
    });
  };