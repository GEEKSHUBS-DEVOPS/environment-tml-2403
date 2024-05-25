import { Test, TestingModule } from '@nestjs/testing';
import { MiControllerController } from './mi-controller.controller';

describe('MiControllerController', () => {
  let controller: MiControllerController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [MiControllerController],
    }).compile();

    controller = module.get<MiControllerController>(MiControllerController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
