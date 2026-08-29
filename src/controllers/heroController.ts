import { Request, Response } from 'express';

const getAllHeroes = (req: Request, res: Response) => {
  res.json({
    message: 'Assume all the heroes are here'
  });
};

const getHeroById = (req: Request, res: Response) => {
  const { id } = req.params;
  res.json({
    message: `Assume hero with ID ${id} is here`
  });
}

export {
  getAllHeroes,
  getHeroById
};