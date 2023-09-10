import { db } from "../db.js";

export const getAllViciosUser = (_, res) => {
    const q = "SELECT vicios_do_user.id, vicios_do_user.data_abs, vicios.nome, vicios.icone FROM vicios_do_user INNER JOIN vicios ON vicios_do_user.id_vicio = vicios.id";

    db.query(q, (err, data) => {
        if (err) return res.json(err);

        return res.status(200).json(data);
    });
};

export const getViciosUser = (req, res) => {
    const q = "SELECT * FROM vicios_do_user WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Vicio do usuário visualizado com sucesso.");
    });
  };

export const addViciosUser = (req, res) => {
    const q =
      "INSERT INTO vicios_do_user(`id_vicio`, `data_abs`) VALUES(?)";
  
    const values = [
      req.body.id_vicio,
      req.body.data_abs,
    ];
  
    db.query(q, [values], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Vicio registrado com sucesso.");
    });
  };
  
  export const updateViciosUser = (req, res) => {
    const q =
      "UPDATE vicios_do_user SET `id_vicio` = ?, `data_abs` = ? WHERE `id` = ?";
  
    const values = [
      req.body.id_vicio,
      req.body.data_abs
    ];
  
    db.query(q, [...values, req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Data atualizada com sucesso.");
    });
  };
  
  export const deleteViciosUser = (req, res) => {
    const q = "DELETE FROM vicios_do_user WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Vicio do usuário deletado com sucesso.");
    });
  };