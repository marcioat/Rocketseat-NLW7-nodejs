import { Request, Response } from "express";
import { GetLast3MessagesService } from "../services/GetLast3MessagesService";

class GetLast3MessagesControlle {
  async handle(request: Request, response: Response) {
    const { message } = request.body;
    const { user_id } = request;
    
    const service = new GetLast3MessagesService();

    try {
      const result = await service.execute();

      return response.json(result);

    } catch (error) {
      return response.json(error.message);
    }
  }
}

export { GetLast3MessagesControlle };
