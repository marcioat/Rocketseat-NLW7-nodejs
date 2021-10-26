import { Router } from "express";
import { AuthenticateUserController } from "./controllers/AuthenticateUserController";
import { CreateMessageController } from "./controllers/CreateMessageController";
import { GetLast3MessagesControlle } from "./controllers/GetLast3MessagesControlle";
import { ProfileUserControlle } from "./controllers/ProfileUSerController";
import { ensureAuthenticated } from "./middleware/ensureAuthenticated";


const router = Router();

router.post("/authenticate", new AuthenticateUserController().handle);

router.post("/message",ensureAuthenticated, new CreateMessageController().handle);
router.get("/messages/last3", new GetLast3MessagesControlle().handle);
router.get("/profileuser",ensureAuthenticated, new ProfileUserControlle().handle);

export {router};