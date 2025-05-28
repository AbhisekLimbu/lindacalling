extern  "c" void kernal_main(){
         const char* message =  "hello from c++ kernal";
         char* video_memory =  (char*)0xb8000;

         for (int i=0; message[i[ != "\0"; ++i){
               video_memory[i*2] =   message[i];
               video_memory[i*2+1] = 0x07;
         

         }

         while(1);

}
