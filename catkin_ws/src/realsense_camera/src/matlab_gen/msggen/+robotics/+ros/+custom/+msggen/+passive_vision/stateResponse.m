classdef stateResponse < robotics.ros.Message
    %stateResponse MATLAB implementation of passive_vision/stateResponse
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'passive_vision/stateResponse' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'b5a646ace0a879c61814d5fb9f2c5b9e' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        ObjectList
        ObjectConfidence
        ObjectSuctionPoints
        ObjectPose
        ObjectFlag
        SuctionPoints
        GraspProposals
        LogFilePaths
    end
    
    properties (Constant, Hidden)
        PropertyList = {'GraspProposals', 'LogFilePaths', 'ObjectConfidence', 'ObjectFlag', 'ObjectList', 'ObjectPose', 'ObjectSuctionPoints', 'SuctionPoints'} % List of non-constant message properties
        ROSPropertyList = {'grasp_proposals', 'log_file_paths', 'object_confidence', 'object_flag', 'object_list', 'object_pose', 'object_suction_points', 'suction_points'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = stateResponse(msg)
            %stateResponse Construct the message object stateResponse
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function objectlist = get.ObjectList(obj)
            %get.ObjectList Get the value for property ObjectList
            javaArray = obj.JavaMessage.getObjectList;
            array = obj.readJavaArray(javaArray, 'char');
            objectlist = arrayfun(@(x) char(x), array, 'UniformOutput', false);
        end
        
        function set.ObjectList(obj, objectlist)
            %set.ObjectList Set the value for property ObjectList
            if ~isvector(objectlist) && isempty(objectlist)
                % Allow empty [] input
                objectlist = cell.empty(0,1);
            end
            
            validateattributes(objectlist, {'cell'}, {'vector'}, 'stateResponse', 'ObjectList');
            if any(cellfun(@(x) ~ischar(x), objectlist))
                error(message('robotics:ros:message:CellArrayStringError', ...
                    'objectlist'));
            end
            
            javaArray = obj.JavaMessage.getObjectList;
            array = obj.writeJavaArray(objectlist, javaArray, 'char');
            obj.JavaMessage.setObjectList(array);
        end
        
        function objectconfidence = get.ObjectConfidence(obj)
            %get.ObjectConfidence Get the value for property ObjectConfidence
            javaArray = obj.JavaMessage.getObjectConfidence;
            array = obj.readJavaArray(javaArray, 'single');
            objectconfidence = single(array);
        end
        
        function set.ObjectConfidence(obj, objectconfidence)
            %set.ObjectConfidence Set the value for property ObjectConfidence
            if ~isvector(objectconfidence) && isempty(objectconfidence)
                % Allow empty [] input
                objectconfidence = single.empty(0,1);
            end
            
            validateattributes(objectconfidence, {'numeric'}, {'vector'}, 'stateResponse', 'ObjectConfidence');
            
            javaArray = obj.JavaMessage.getObjectConfidence;
            array = obj.writeJavaArray(objectconfidence, javaArray, 'single');
            obj.JavaMessage.setObjectConfidence(array);
        end
        
        function objectsuctionpoints = get.ObjectSuctionPoints(obj)
            %get.ObjectSuctionPoints Get the value for property ObjectSuctionPoints
            javaArray = obj.JavaMessage.getObjectSuctionPoints;
            array = obj.readJavaArray(javaArray, 'single');
            objectsuctionpoints = single(array);
        end
        
        function set.ObjectSuctionPoints(obj, objectsuctionpoints)
            %set.ObjectSuctionPoints Set the value for property ObjectSuctionPoints
            if ~isvector(objectsuctionpoints) && isempty(objectsuctionpoints)
                % Allow empty [] input
                objectsuctionpoints = single.empty(0,1);
            end
            
            validateattributes(objectsuctionpoints, {'numeric'}, {'vector'}, 'stateResponse', 'ObjectSuctionPoints');
            
            javaArray = obj.JavaMessage.getObjectSuctionPoints;
            array = obj.writeJavaArray(objectsuctionpoints, javaArray, 'single');
            obj.JavaMessage.setObjectSuctionPoints(array);
        end
        
        function objectpose = get.ObjectPose(obj)
            %get.ObjectPose Get the value for property ObjectPose
            javaArray = obj.JavaMessage.getObjectPose;
            array = obj.readJavaArray(javaArray, 'single');
            objectpose = single(array);
        end
        
        function set.ObjectPose(obj, objectpose)
            %set.ObjectPose Set the value for property ObjectPose
            if ~isvector(objectpose) && isempty(objectpose)
                % Allow empty [] input
                objectpose = single.empty(0,1);
            end
            
            validateattributes(objectpose, {'numeric'}, {'vector'}, 'stateResponse', 'ObjectPose');
            
            javaArray = obj.JavaMessage.getObjectPose;
            array = obj.writeJavaArray(objectpose, javaArray, 'single');
            obj.JavaMessage.setObjectPose(array);
        end
        
        function objectflag = get.ObjectFlag(obj)
            %get.ObjectFlag Get the value for property ObjectFlag
            javaArray = obj.JavaMessage.getObjectFlag;
            array = obj.readJavaArray(javaArray, 'int32');
            objectflag = int32(array);
        end
        
        function set.ObjectFlag(obj, objectflag)
            %set.ObjectFlag Set the value for property ObjectFlag
            if ~isvector(objectflag) && isempty(objectflag)
                % Allow empty [] input
                objectflag = int32.empty(0,1);
            end
            
            validateattributes(objectflag, {'numeric'}, {'vector'}, 'stateResponse', 'ObjectFlag');
            
            javaArray = obj.JavaMessage.getObjectFlag;
            array = obj.writeJavaArray(objectflag, javaArray, 'int32');
            obj.JavaMessage.setObjectFlag(array);
        end
        
        function suctionpoints = get.SuctionPoints(obj)
            %get.SuctionPoints Get the value for property SuctionPoints
            javaArray = obj.JavaMessage.getSuctionPoints;
            array = obj.readJavaArray(javaArray, 'single');
            suctionpoints = single(array);
        end
        
        function set.SuctionPoints(obj, suctionpoints)
            %set.SuctionPoints Set the value for property SuctionPoints
            if ~isvector(suctionpoints) && isempty(suctionpoints)
                % Allow empty [] input
                suctionpoints = single.empty(0,1);
            end
            
            validateattributes(suctionpoints, {'numeric'}, {'vector'}, 'stateResponse', 'SuctionPoints');
            
            javaArray = obj.JavaMessage.getSuctionPoints;
            array = obj.writeJavaArray(suctionpoints, javaArray, 'single');
            obj.JavaMessage.setSuctionPoints(array);
        end
        
        function graspproposals = get.GraspProposals(obj)
            %get.GraspProposals Get the value for property GraspProposals
            javaArray = obj.JavaMessage.getGraspProposals;
            array = obj.readJavaArray(javaArray, 'single');
            graspproposals = single(array);
        end
        
        function set.GraspProposals(obj, graspproposals)
            %set.GraspProposals Set the value for property GraspProposals
            if ~isvector(graspproposals) && isempty(graspproposals)
                % Allow empty [] input
                graspproposals = single.empty(0,1);
            end
            
            validateattributes(graspproposals, {'numeric'}, {'vector'}, 'stateResponse', 'GraspProposals');
            
            javaArray = obj.JavaMessage.getGraspProposals;
            array = obj.writeJavaArray(graspproposals, javaArray, 'single');
            obj.JavaMessage.setGraspProposals(array);
        end
        
        function logfilepaths = get.LogFilePaths(obj)
            %get.LogFilePaths Get the value for property LogFilePaths
            javaArray = obj.JavaMessage.getLogFilePaths;
            array = obj.readJavaArray(javaArray, 'char');
            logfilepaths = arrayfun(@(x) char(x), array, 'UniformOutput', false);
        end
        
        function set.LogFilePaths(obj, logfilepaths)
            %set.LogFilePaths Set the value for property LogFilePaths
            if ~isvector(logfilepaths) && isempty(logfilepaths)
                % Allow empty [] input
                logfilepaths = cell.empty(0,1);
            end
            
            validateattributes(logfilepaths, {'cell'}, {'vector'}, 'stateResponse', 'LogFilePaths');
            if any(cellfun(@(x) ~ischar(x), logfilepaths))
                error(message('robotics:ros:message:CellArrayStringError', ...
                    'logfilepaths'));
            end
            
            javaArray = obj.JavaMessage.getLogFilePaths;
            array = obj.writeJavaArray(logfilepaths, javaArray, 'char');
            obj.JavaMessage.setLogFilePaths(array);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.ObjectList = obj.ObjectList;
            cpObj.ObjectConfidence = obj.ObjectConfidence;
            cpObj.ObjectSuctionPoints = obj.ObjectSuctionPoints;
            cpObj.ObjectPose = obj.ObjectPose;
            cpObj.ObjectFlag = obj.ObjectFlag;
            cpObj.SuctionPoints = obj.SuctionPoints;
            cpObj.GraspProposals = obj.GraspProposals;
            cpObj.LogFilePaths = obj.LogFilePaths;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.ObjectList = strObj.ObjectList;
            obj.ObjectConfidence = strObj.ObjectConfidence;
            obj.ObjectSuctionPoints = strObj.ObjectSuctionPoints;
            obj.ObjectPose = strObj.ObjectPose;
            obj.ObjectFlag = strObj.ObjectFlag;
            obj.SuctionPoints = strObj.SuctionPoints;
            obj.GraspProposals = strObj.GraspProposals;
            obj.LogFilePaths = strObj.LogFilePaths;
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.ObjectList = obj.ObjectList;
            strObj.ObjectConfidence = obj.ObjectConfidence;
            strObj.ObjectSuctionPoints = obj.ObjectSuctionPoints;
            strObj.ObjectPose = obj.ObjectPose;
            strObj.ObjectFlag = obj.ObjectFlag;
            strObj.SuctionPoints = obj.SuctionPoints;
            strObj.GraspProposals = obj.GraspProposals;
            strObj.LogFilePaths = obj.LogFilePaths;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.passive_vision.stateResponse.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.passive_vision.stateResponse;
            obj.reload(strObj);
        end
    end
end
