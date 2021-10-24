-- CreateTable
CREATE TABLE "nlw_messagex" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "text" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "user_id" TEXT NOT NULL,
    CONSTRAINT "nlw_messagex_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "nlw_user" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
