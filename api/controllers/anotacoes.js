import { db } from "../db.js";

export const getAllAnotacoes = (_, res) => {
    const q = "SELECT * FROM anotacoes";

    db.query(q, (err, data) => {
        if (err) return res.json(err);

        return res.status(200).json(data);
    });
};

export const getAnotacoes = (req, res) => {
    const q = "SELECT * FROM anotacoes WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Anotação do usuário visualizada com sucesso.");
    });
  };

export const addAnotacoes = (req, res) => {
    const q =
      "INSERT INTO Anotacoes(`id_vicio_user`, `texto`, `data_anot`) VALUES(?)";
  
    const values = [
      req.body.id_vicio_user,
      req.body.texto,
      req.body.data_anot
    ];
  
    db.query(q, [values], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Anotação registrada com sucesso.");
    });
  };
  
  export const updateAnotacoes = (req, res) => {
    const q =
      "UPDATE anotacoes SET `id_vicio_user` = ?, `texto` = ?, `data_anot` = ? WHERE `id` = ?";
  
    const values = [
      req.body.id_vicio_user,
      req.body.texto
    ];
  
    db.query(q, [...values, req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Anotação atualizada com sucesso.");
    });
  };
  
  export const deleteAnotacoes = (req, res) => {
    const q = "DELETE FROM anotacoes WHERE `id` = ?";
  
    db.query(q, [req.params.id], (err) => {
      if (err) return res.json(err);
  
      return res.status(200).json("Anotação do usuário deletada com sucesso.");
    });
  };