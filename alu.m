classdef ALU8
    properties
        A = uint8(0)
        B = uint8(0)
        Result = uint8(0)
        Flags = struct('Z',0,'C',0,'V',0,'N',0)
    end
    
    methods
        function obj = execute(obj, opcode)
            a = double(obj.A);
            b = double(obj.B);
            
            switch upper(opcode)
                case 'ADD'
                    res = a + b;
                    obj.Result = uint8(res);
                    obj.Flags.C = res > 255;
                    obj.Flags.V = bitget(bitand(bitcmp(bitxor(obj.A, obj.B)), bitxor(obj.A, obj.Result)), 8);
                case 'SUB'
                    res = a - b;
                    obj.Result = uint8(res);
                    obj.Flags.C = a >= b;
                    obj.Flags.V = bitget(bitand(bitxor(obj.A, obj.B), bitxor(obj.A, obj.Result)), 8);
                case 'AND'
                    obj.Result = bitand(obj.A, obj.B);
            end
            
            % Update common flags
            obj.Flags.Z = (obj.Result == 0);
            obj.Flags.N = bitget(obj.Result, 8);
        end
    end
end
