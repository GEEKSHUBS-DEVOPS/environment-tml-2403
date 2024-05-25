import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { MiControllerController } from './mi-controller/mi-controller.controller';

@Module({
  imports: [],
  controllers: [AppController, MiControllerController],
  providers: [AppService],
})
export class AppModule {}
