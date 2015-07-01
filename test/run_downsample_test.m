
  %% run_spec
  clear;
  %% Clear import list to test correct library
  clear import; 



  %% For Functions
  %    Add function to path
  run('../load_toolbox.m');

  %% Test Vectors
  target = 32;
  test = {};
  test(end+1).data =  [1:target]  ; test(end).R = 1; test(end).expect = [1:1:target];
  test(end+1).data =  [1:target]  ; test(end).R = 2; test(end).expect = [1:2:target];
  test(end+1).data =  [1:target]  ; test(end).R = 3; test(end).expect = [1:3:target];
  test(end+1).data =  [1:target]  ; test(end).R = 4; test(end).expect = [1:4:target];
  test(end+1).data =  [1:target]  ; test(end).R = 5; test(end).expect = [1:5:target];
  test(end+1).data =  [1:target]  ; test(end).R = 6; test(end).expect = [1:6:target];
  test(end+1).data =  [1:target]  ; test(end).R = 7; test(end).expect = [1:7:target];
  test(end+1).data =  [1:target]  ; test(end).R = 8; test(end).expect = [1:8:target];
  test(end+1).data =  [1:target]  ; test(end).R = 9; test(end).expect = [1:9:target];
  test(end+1).data =  [1:target]  ; test(end).R =10; test(end).expect = [1:10:target];
  test(end+1).data =  [1:target]  ; test(end).R =11; test(end).expect = [1:11:target];
  test(end+1).data =  [1:target]  ; test(end).R =12; test(end).expect = [1:12:target];
  test(end+1).data =  [1:target]  ; test(end).R =13; test(end).expect = [1:13:target];
  test(end+1).data =  [1:target]  ; test(end).R =14; test(end).expect = [1:14:target];
  test(end+1).data =  [1:target]  ; test(end).R =15; test(end).expect = [1:15:target];
  test(end+1).data =  [1:target]  ; test(end).R =16; test(end).expect = [1:16:target];
  
  %1 Dimensional matrices on the other axis
  test(end+1).data =  [1:target]'  ; test(end).R = 1; test(end).expect = [1:1:target]';
  test(end+1).data =  [1:target]'  ; test(end).R = 2; test(end).expect = [1:2:target]';
  test(end+1).data =  [1:target]'  ; test(end).R = 3; test(end).expect = [1:3:target]';
  test(end+1).data =  [1:target]'  ; test(end).R = 4; test(end).expect = [1:4:target]';
  test(end+1).data =  [1:target]'  ; test(end).R = 5; test(end).expect = [1:5:target]';
  test(end+1).data =  [1:target]'  ; test(end).R = 6; test(end).expect = [1:6:target]';
  test(end+1).data =  [1:target]'  ; test(end).R = 7; test(end).expect = [1:7:target]';
  test(end+1).data =  [1:target]'  ; test(end).R = 8; test(end).expect = [1:8:target]';
  
  
  %% The tests
  error_count = 0;
  pass_count  = 0;

  for vector=1:size(test, 2)
    b           = downsample(test(vector).data, test(vector).R);
    if (  ~isequal(b, test(vector).expect )  )
      disp(['downsample( [', ...
         num2str(test(vector).data),'], ', ...
         num2str(test(vector).R), ' ) Failed : ', b])
      error_count = error_count + 1;
    else
      pass_count  = pass_count  + 1;
    end
  end

  %% Test Status Report
  if error_count > 0
    disp(['Test FAILED : ', num2str(pass_count), ' passes and ',num2str(error_count),' fails'])
  else
    disp(['Test Passed : ', num2str(pass_count), ' checks ran '])
  end

