import { db } from "../db.js";

export const getAllRecaidas = (_, res) => {
    const q = "SELECT * FROM recaidas";

    db.query(q, (err, data) => {
        if (err) return res.json(err);

        return res.status(200).json(data);
    });
};

export const getRecaidas = (req, res) => {
    const q = "SELECT * FROM recaidas WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Recaída do usuário visualizada com sucesso.");
    });
  };

export const addRecaidas = (req, res) => {
    const q =
      "INSERT INTO recaidas(`id_vicio_user`, `data_rec`) VALUES(?)";
  
    const values = [
      req.body.id_vicio_user,
      req.body.data_rec
    ];
  
    db.query(q, [values], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Recaída registrada com sucesso.");
    });
  };
  
  export const updateRecaidas = (req, res) => {
    const q =
      "UPDATE recaidas SET `id_vicio_user` = ?, `data_rec` = ? WHERE `id` = ?";
  
    const values = [
      req.body.id_vicio_user,
      req.body.data_rec
    ];
  
    db.query(q, [...values, req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Recaída atualizada com sucesso.");
    });
  };
  
  export const deleteRecaidas = (req, res) => {
    const q = "DELETE FROM recaidas WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Recaída do usuário deletada com sucesso.");
    });
  };