RegisterTableGoal(GOAL_KnightAndDragon_452100_Battle, "KnightAndDragon_452100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KnightAndDragon_452100_Battle, true)

Goal.Initialize = function (_, arg1, _, _)
    arg1:SetNumber(0, 0)
    arg1:SetNumber(1, 0)
end

Goal.Activate = function (_, actor, goals)
    Init_Pseudo_Global(actor, goals)
    actor:SetStringIndexedNumber("Dist_SideStep", 8)
    actor:SetStringIndexedNumber("Dist_BackStep", 8)
    local probabilities = {}
    local acts = {}
    local f2_local0 = {}
    Common_Clear_Param(probabilities, acts, f2_local0)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local distance = actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    actor:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    actor:GetEventRequest()
	
	
    if InsideRange(actor, goals, -40, 60, -5 - actor:GetMapHitRadius(TARGET_SELF), 1.3 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[1] = 100
    end
    if InsideRange(actor, goals, 115, 60, 1 - actor:GetMapHitRadius(TARGET_SELF), 5 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[2] = 100
    end
    if InsideRange(actor, goals, 0, 90, 12 - actor:GetMapHitRadius(TARGET_SELF), 16 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[3] = 100
    end
    if InsideRange(actor, goals, 0, 90, 11.4 - actor:GetMapHitRadius(TARGET_SELF), 15.4 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[4] = 100
    end
    if InsideRange(actor, goals, 0, 90, 19 - actor:GetMapHitRadius(TARGET_SELF), 24 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[5] = 100
    end
    if InsideRange(actor, goals, 10, 45, 12 - actor:GetMapHitRadius(TARGET_SELF), 15 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[6] = 100
    end
    if InsideRange(actor, goals, 10, 45, 18 - actor:GetMapHitRadius(TARGET_SELF), 22 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[7] = 100
    end
    if InsideRange(actor, goals, 10, 45, 24 - actor:GetMapHitRadius(TARGET_SELF), 29 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[8] = 100
    end
    if InsideRange(actor, goals, 0, 45, 8 - actor:GetMapHitRadius(TARGET_SELF), 13 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[9] = 100
    end
    if InsideRange(actor, goals, 0, 90, 7 - actor:GetMapHitRadius(TARGET_SELF), 19 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[10] = 50
		probabilities[23] = 50
    end
    if InsideRange(actor, goals, 0, 360, 17 - actor:GetMapHitRadius(TARGET_SELF), 67 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[11] = 100
    end
    if InsideRange(actor, goals, 0, 360, -999 - actor:GetMapHitRadius(TARGET_SELF), 11 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[12] = 100
    end
    if InsideRange(actor, goals, 0, 360, 17 - actor:GetMapHitRadius(TARGET_SELF), 27 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[13] = 250
    end
    if InsideRange(actor, goals, 0, 360, 29 - actor:GetMapHitRadius(TARGET_SELF), 42 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[14] = 100
    end
    if InsideRange(actor, goals, 0, 360, 47 - actor:GetMapHitRadius(TARGET_SELF), 67.2 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[15] = 100
    end
    if InsideRange(actor, goals, 0, 360, -999 - actor:GetMapHitRadius(TARGET_SELF), 11 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[16] = 100
    end
    if InsideRange(actor, goals, 0, 360, 15, 20) then
        probabilities[16] = 100
    end
    if InsideRange(actor, goals, 10, 45, 22.1 - actor:GetMapHitRadius(TARGET_SELF), 27.1 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[17] = 100
    end
    if InsideRange(actor, goals, 0, 45, 4 - actor:GetMapHitRadius(TARGET_SELF), 8 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[18] = 100
    end
    if distance >= 22 then
        probabilities[20] = 10
        probabilities[21] = 10
        probabilities[16] = 0
    elseif distance >= 17 then
        probabilities[20] = 10
        probabilities[21] = 10
        probabilities[16] = 0
    elseif distance >= 5 then
        probabilities[20] = 10
        probabilities[21] = 10
        probabilities[16] = 0
    else
        probabilities[20] = 10
        probabilities[21] = 10
        probabilities[16] = 10
    end
    probabilities[1] = SetCoolTime(actor, goals, 3002, 20, probabilities[1], 25)
    probabilities[2] = SetCoolTime(actor, goals, 3017, 20, probabilities[2], 25)
    probabilities[3] = SetCoolTime(actor, goals, 3013, 45, probabilities[3], 1)
    probabilities[3] = SetCoolTime(actor, goals, 3000, 45, probabilities[3], 1)
    probabilities[3] = SetCoolTime(actor, goals, 3006, 45, probabilities[3], 1)
    probabilities[4] = SetCoolTime(actor, goals, 3000, 45, probabilities[4], 1)
    probabilities[4] = SetCoolTime(actor, goals, 3013, 45, probabilities[4], 1)
    probabilities[4] = SetCoolTime(actor, goals, 3006, 45, probabilities[4], 1)
    probabilities[5] = SetCoolTime(actor, goals, 3006, 45, probabilities[5], 1)
    probabilities[5] = SetCoolTime(actor, goals, 3013, 45, probabilities[5], 1)
    probabilities[5] = SetCoolTime(actor, goals, 3000, 45, probabilities[5], 1)
    probabilities[6] = SetCoolTime(actor, goals, 3016, 45, probabilities[6], 1)
    probabilities[6] = SetCoolTime(actor, goals, 3004, 45, probabilities[6], 1)
    probabilities[6] = SetCoolTime(actor, goals, 3019, 45, probabilities[6], 1)
    probabilities[7] = SetCoolTime(actor, goals, 3004, 45, probabilities[7], 1)
    probabilities[7] = SetCoolTime(actor, goals, 3016, 45, probabilities[7], 1)
    probabilities[7] = SetCoolTime(actor, goals, 3019, 45, probabilities[7], 1)
    probabilities[8] = SetCoolTime(actor, goals, 3019, 45, probabilities[8], 1)
    probabilities[8] = SetCoolTime(actor, goals, 3016, 45, probabilities[8], 1)
    probabilities[8] = SetCoolTime(actor, goals, 3004, 45, probabilities[8], 1)
    probabilities[9] = SetCoolTime(actor, goals, 3007, 45, probabilities[9], 1)
    probabilities[10] = SetCoolTime(actor, goals, 3008, 55, probabilities[10], 1)
    probabilities[11] = SetCoolTime(actor, goals, 3011, 30, probabilities[11], 1)
    probabilities[12] = SetCoolTime(actor, goals, 3009, 30, probabilities[12], 1)
    probabilities[13] = SetCoolTime(actor, goals, 3001, 60, probabilities[13], 1)
    probabilities[14] = SetCoolTime(actor, goals, 3003, 30, probabilities[14], 1)
    probabilities[14] = SetCoolTime(actor, goals, 3018, 30, probabilities[14], 1)
    probabilities[15] = SetCoolTime(actor, goals, 3003, 30, probabilities[15], 1)
    probabilities[15] = SetCoolTime(actor, goals, 3018, 30, probabilities[15], 1)
    probabilities[22] = SetCoolTime(actor, goals, 6001, 10, probabilities[22], 1)
    probabilities[16] = SetCoolTime(actor, goals, 3010, 30, probabilities[16], 1)
    probabilities[17] = SetCoolTime(actor, goals, 3023, 30, probabilities[17], 1)
    probabilities[18] = SetCoolTime(actor, goals, 3030, 45, probabilities[18], 1)
	probabilities[23] = SetCoolTime(actor, goals, 3033, 55, probabilities[23], 1)
    if distance <= -1 then
        probabilities[11] = 40
        probabilities[12] = 20
        probabilities[13] = 20
        probabilities[16] = 20
    end
    acts[1] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act01)
    acts[2] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act02)
    acts[3] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act03)
    acts[4] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act04)
    acts[5] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act05)
    acts[6] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act06)
    acts[7] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act07)
    acts[8] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act08)
    acts[9] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act09)
    acts[10] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act10)
    acts[11] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act11)
    acts[12] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act12)
    acts[13] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act13)
    acts[14] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act14)
    acts[15] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act15)
    acts[16] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act16)
    acts[17] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act17)
    acts[18] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act18)
    acts[19] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act19)
    acts[20] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act20)
    acts[21] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act21)
    acts[22] = REGIST_FUNC(actor, goals, KnightAndDragon_452100_Act22)
    Common_Battle_Activate(actor, goals, probabilities, acts, REGIST_FUNC(actor, goals, KnightAndDragon_452100_ActAfter_AdjustSpace), f2_local0)
	
end

function KnightAndDragon_452100_Act01(arg0, goals, _)
    local f3_local0 = 3002
    local f3_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 0
    local f3_local3 = 0
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act02(arg0, goals, _)
    local f4_local0 = 3017
    local f4_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 0
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act03(actor, goals, _)
    local f5_local0 = 16 - actor:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 16 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local2 = 16 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    Approach_Act_Flex(actor, goals, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local action0 = 3013
    local action1 = 3014
    local f5_local7 = 3015
    local f5_local8 = 3024
    local success_distance0 = 22 - actor:GetMapHitRadius(TARGET_SELF) + 0
    local success_distance1 = 22 - actor:GetMapHitRadius(TARGET_SELF) + 0
    local success_distance2 = 27.1 - actor:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local9 = 8 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 1.5
    local front_decision_angle = 90
    local random = actor:GetRandam_Int(1, 100)
    if random <= 10 then
        goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, action0, TARGET_ENE_0, f5_local9, turn_time_before, front_decision_angle, 0, 0)
    elseif random <= 40 then
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, action1, TARGET_ENE_0, f5_local9, 0, 0)
    elseif random <= 70 then
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, action1, TARGET_ENE_0, success_distance1, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local7, TARGET_ENE_0, f5_local9, 0, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, action1, TARGET_ENE_0, success_distance2, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local8, TARGET_ENE_0, f5_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act04(actor, goals, _)
    local f6_local0 = 15.4 - actor:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 15.4 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local2 = 15.4 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(actor, goals, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local action0 = 3000
    local action1 = 3014
    local f6_local7 = 3015
    local success_distance0 = 22 - actor:GetMapHitRadius(TARGET_SELF) + 0
    local success_distance1 = 22 - actor:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local8 = 8 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 1.5
    local front_decision_angle = 90
    local random = actor:GetRandam_Int(1, 100)
    if random <= 10 then
        goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, action0, TARGET_ENE_0, f6_local8, turn_time_before, front_decision_angle, 0, 0)
    elseif random <= 60 then
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, action1, TARGET_ENE_0, f6_local8, 0, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, action1, TARGET_ENE_0, success_distance1, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local7, TARGET_ENE_0, f6_local8, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act05(actor, goals, _)
    local f7_local0 = 24 - actor:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 24 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local2 = 24 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    Approach_Act_Flex(actor, goals, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local action0 = 3006
    local action1 = 3014
    local f7_local7 = 3015
    local success_distance0 = 22 - actor:GetMapHitRadius(TARGET_SELF) + 0
    local success_distance1 = 22 - actor:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local8 = 8 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 1.5
    local front_decision_angle = 90
    local random = actor:GetRandam_Int(1, 100)
    if random <= 10 then
        goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, action0, TARGET_ENE_0, f7_local8, turn_time_before, front_decision_angle, 0, 0)
    elseif random <= 60 then
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, action1, TARGET_ENE_0, f7_local8, 0, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, action1, TARGET_ENE_0, success_distance1, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local7, TARGET_ENE_0, f7_local8, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act06(arg0, goals, _)
    local f8_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local2 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(arg0, goals, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local action = 3016
    local f8_local7 = 3028
    local success_distance = 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f8_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 1.5
    local front_decision_angle = 30
    if arg0:GetRandam_Int(1, 100) <= 50 then
        goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, action, TARGET_ENE_0, f8_local8, turn_time_before, front_decision_angle, 0, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local7, TARGET_ENE_0, f8_local8, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act07(arg0, goals, _)
    local f9_local0 = 22 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 22 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local2 = 22 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(arg0, goals, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3004
    local f9_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 1.5
    local f9_local10 = 60
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act08(arg0, goals, _)
    local f10_local0 = 29 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 29 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local2 = 29 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    Approach_Act_Flex(arg0, goals, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3019
    local f10_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 1.5
    local f10_local10 = 60
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act09(actor, goals, _)
    local f11_local0 = 13 - actor:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 13 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local2 = 13 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    Approach_Act_Flex(actor, goals, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local action = 3007
    local f11_local7 = 3026
    local f11_local8 = 3029
    local success_distance0 = 27.1 - actor:GetMapHitRadius(TARGET_SELF) + 0
    local success_distance1 = 22 - actor:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local9 = 8 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 1.5
    local front_decision_angle = 90
    local random = actor:GetRandam_Int(1, 100)
    if random <= 10 then
        goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, action, TARGET_ENE_0, f11_local9, turn_time_before, front_decision_angle, 0, 0)
    elseif random <= 55 then
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local7, TARGET_ENE_0, f11_local9, 0, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance1, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local8, TARGET_ENE_0, f11_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act10(actor, goals, _)
    local f12_local0 = 19 - actor:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 19 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local2 = 19 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    Approach_Act_Flex(actor, goals, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3008
    local f12_local8 = 8 - actor:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 1.5
    local f12_local10 = 60
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act11(actor, goals, _)
    local f13_local0 = 67 - actor:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 67 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local2 = 67 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    Approach_Act_Flex(actor, goals, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local action = 3011
    local success_distance = 8 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 1.5
    local front_decision_angle = 90
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act12(arg0, goals, _)
    local f14_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local2 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    Approach_Act_Flex(arg0, goals, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3009
    local f14_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 0
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act13(arg0, goals, _)
    local f15_local0 = 27 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 27 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local2 = 27 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    Approach_Act_Flex(arg0, goals, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3001
    local f15_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 1.5
    local f15_local10 = 60
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act14(arg0, goals, _)
    local f16_local0 = 42 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 42 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local2 = 42 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 3
    local f16_local6 = 3
    Approach_Act_Flex(arg0, goals, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local action = 3018
    local f16_local7 = 3005
    local f16_local8 = 3012
    local success_distance0 = 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local success_distance1 = 15.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f16_local9 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 1.5
    local front_decision_angle = 30
    if arg0:GetRandam_Int(1, 100) <= 50 then
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local7, TARGET_ENE_0, f16_local9, 0, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance1, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local8, TARGET_ENE_0, f16_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act15(arg0, goals, _)
    local f17_local0 = 67.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 67.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local2 = 67.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    Approach_Act_Flex(arg0, goals, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local action = 3003
    local f17_local7 = 3005
    local f17_local8 = 3012
    local success_distance0 = 22 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local success_distance1 = 15.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f17_local9 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 1.5
    local front_decision_angle = 30
    if arg0:GetRandam_Int(1, 100) <= 50 then
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local7, TARGET_ENE_0, f17_local9, 0, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance1, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local8, TARGET_ENE_0, f17_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act16(arg0, goals, _)
    local f18_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local2 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 3
    local f18_local6 = 3
    Approach_Act_Flex(arg0, goals, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local7 = 3010
    local f18_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local9 = 1.5
    local f18_local10 = 60
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act17(arg0, goals, _)
    local f19_local0 = 27.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 27.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local2 = 27.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 3
    local f19_local6 = 3
    Approach_Act_Flex(arg0, goals, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3023
    local f19_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 1.5
    local f19_local10 = 60
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act18(arg0, goals, _)
    local f20_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 3
    local f20_local6 = 3
    Approach_Act_Flex(arg0, goals, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3030
    local f20_local8 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = 1.5
    local f20_local10 = 60
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local7, TARGET_ENE_0, f20_local8, f20_local9, f20_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act19(actor, goals, _)
    local f21_local0 = 3032
    local f21_local1 = 8 - actor:GetMapHitRadius(TARGET_SELF)
    actor:GetRandam_Int(1, 100)
    goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f21_local0, TARGET_ENE_0, f21_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act20(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_Act21(arg0, goals, _)
    goals:AddSubGoal(GOAL_COMMON_KeepDist, arg0:GetRandam_Float(2.5, 4), TARGET_ENE_0, 1, 16, TARGET_ENE_0, true, -1)
end

function KnightAndDragon_452100_Act22(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_SpinStep, 10, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
end

function KnightAndDragon_452100_Act23(actor, goals, _)
    local f12_local0 = 19 - actor:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 19 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local2 = 19 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    Approach_Act_Flex(actor, goals, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3033
    local f12_local8 = 8 - actor:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 1.5
    local f12_local10 = 60
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KnightAndDragon_452100_ActAfter_AdjustSpace(_, goals, _)
    goals:AddSubGoal(GOAL_KnightAndDragon_452100_AfterAttackAct, 10)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (_, _, _)
end

Goal.Interrupt = function (_, actor, goals)
    if actor:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f28_local0 = 8 - actor:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = 0
    local f28_local2 = 0
    actor:GetDist(TARGET_ENE_0)
    local random = actor:GetRandam_Int(1, 100)
    if actor:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if InsideRange(actor, goals, 0, 10 + 45, 22.1 - actor:GetMapHitRadius(TARGET_SELF), 27.1 - actor:GetMapHitRadius(TARGET_SELF)) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, f28_local0, f28_local1, f28_local2, 0, 0)
            return true
        elseif InsideRange(actor, goals, 0, 90 + 10, 16 - actor:GetMapHitRadius(TARGET_SELF), 20 - actor:GetMapHitRadius(TARGET_SELF)) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, f28_local0, f28_local1, f28_local2, 0, 0)
            return true
        elseif InsideRange(actor, goals, 0, 10 + 45, 9 - actor:GetMapHitRadius(TARGET_SELF), 16 - actor:GetMapHitRadius(TARGET_SELF)) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, f28_local0, f28_local1, f28_local2, 0, 0)
            return true
        end
    end
    if actor:GetSpecialEffectActivateInterruptType(0) == 5029 and InsideRange(actor, goals, 0, 120, -3 - actor:GetMapHitRadius(TARGET_SELF), 15 - actor:GetMapHitRadius(TARGET_SELF)) and random <= 30 then
        goals:ClearSubGoal()
        KnightAndDragon_452100_Act19(actor, goals, paramTbl)
    end
    return false
end



RegisterTableGoal(GOAL_KnightAndDragon_452100_AfterAttackAct, "KnightAndDragon_452100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KnightAndDragon_452100_AfterAttackAct, true)

Goal.Activate = function (_, _, _)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end