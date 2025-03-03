CREATE TABLE IF NOT EXISTS MAXINE_GLOBAL_CHAT(
   "server_id" BIGINT NOT NULL,
   "channel_id" BIGINT NOT NULL,
   "webhook_url" TEXT,
   UNIQUE ("server_id", "channel_id")
);
