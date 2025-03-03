from __future__ import annotations

from typing import TYPE_CHECKING, List, Literal, Optional, Union

import discord
from discord.ext import commands

if TYPE_CHECKING:
    from main import Maxine

class Global(commands.Cog):
    "Global Chat Commands"

    def __init__(self, bot: Maxine):
        self.bot: Maxine = bot

    async def cog_load(self):
        pass
        # no necessary profanity list will be needed yet, we shall see.

    async def cog_unload(self):
        print("cog unloaded")
        # possible other things

    @commands.Cog.listener("on_message")
    async def global_chat_handler(self, message: discord.Message):
        supported_message_types = (
            discord.MessageType.default,
            discord.MessageType.reply,
        )
        if (
            not message.guild
            or not message.content
            or message.author.bot
            or message.type not in supported_message_types
        ):
            return

        ctx = await self.bot.get_context(message)
        if ctx.valid:
            return

