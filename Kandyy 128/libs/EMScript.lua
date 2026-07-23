local membrane = require("libs.membrane")

membrane:define(models["model - thin"].root.Membranes.Membrane1, {
    models["model - thin"].root.LeftShoulder.LeftArm.LFURight,
    models["model - thin"].root.LeftShoulder.LeftArm.LArmLower.LFLRight,
    models["model - thin"].root.LeftShoulder.LeftArm.LArmLower.LFLLeft,
    models["model - thin"].root.LeftShoulder.LeftArm.LFULeft
})

membrane:define(models["model - thin"].root.Membranes.Membrane2, {
    models["model - thin"].root.LeftShoulder.LeftArm.LBURight,
    models["model - thin"].root.LeftShoulder.LeftArm.LArmLower.LBLRight,
    models["model - thin"].root.LeftShoulder.LeftArm.LArmLower.LBLLeft,
    models["model - thin"].root.LeftShoulder.LeftArm.LBULeft
})

membrane:define(models["model - thin"].root.Membranes.Membrane3, {
    models["model - thin"].root.LeftShoulder.LeftArm.LArmLower.LBLLeft,
    models["model - thin"].root.LeftShoulder.LeftArm.LBULeft,
    models["model - thin"].root.LeftShoulder.LeftArm.LFULeft,
    models["model - thin"].root.LeftShoulder.LeftArm.LArmLower.LFLLeft
})

membrane:define(models["model - thin"].root.Membranes.Membrane4, {
    models["model - thin"].root.LeftShoulder.LeftArm.LArmLower.LBLRight,
    models["model - thin"].root.LeftShoulder.LeftArm.LBURight,
    models["model - thin"].root.LeftShoulder.LeftArm.LFURight,
    models["model - thin"].root.LeftShoulder.LeftArm.LArmLower.LFLRight
})

membrane:define(models["model - thin"].root.Membranes.Membrane5, {
    models["model - thin"].root.RightShoulder.RightArm.RFURight,
    models["model - thin"].root.RightShoulder.RightArm.RArmLower.RFLRight,
    models["model - thin"].root.RightShoulder.RightArm.RArmLower.RFLLeft,
    models["model - thin"].root.RightShoulder.RightArm.RFULeft
})

membrane:define(models["model - thin"].root.Membranes.Membrane6, {
    models["model - thin"].root.RightShoulder.RightArm.RBURight,
    models["model - thin"].root.RightShoulder.RightArm.RArmLower.RBLRight,
    models["model - thin"].root.RightShoulder.RightArm.RArmLower.RBLLeft,
    models["model - thin"].root.RightShoulder.RightArm.RBULeft
})

membrane:define(models["model - thin"].root.Membranes.Membrane7, {
    models["model - thin"].root.RightShoulder.RightArm.RArmLower.RBLLeft,
    models["model - thin"].root.RightShoulder.RightArm.RBULeft,
    models["model - thin"].root.RightShoulder.RightArm.RFULeft,
    models["model - thin"].root.RightShoulder.RightArm.RArmLower.RFLLeft
})

membrane:define(models["model - thin"].root.Membranes.Membrane8, {
    models["model - thin"].root.RightShoulder.RightArm.RArmLower.RBLRight,
    models["model - thin"].root.RightShoulder.RightArm.RBURight,
    models["model - thin"].root.RightShoulder.RightArm.RFURight,
    models["model - thin"].root.RightShoulder.RightArm.RArmLower.RFLRight
})

membrane:define(models["model - thin"].root.Membranes.Membrane9, {
    models["model - thin"].root.LeftLeg.LFURightLeg,
    models["model - thin"].root.LeftLeg.LLegLower.LFLRightLeg,
    models["model - thin"].root.LeftLeg.LLegLower.LFLLeftLeg,
    models["model - thin"].root.LeftLeg.LFULeftLeg
})

membrane:define(models["model - thin"].root.Membranes.Membrane10, {
    models["model - thin"].root.LeftLeg.LBURightLeg,
    models["model - thin"].root.LeftLeg.LLegLower.LBLRightLeg,
    models["model - thin"].root.LeftLeg.LLegLower.LBLLeftLeg,
    models["model - thin"].root.LeftLeg.LBULeftLeg
})

membrane:define(models["model - thin"].root.Membranes.Membrane11, {
    models["model - thin"].root.LeftLeg.LLegLower.LBLLeftLeg,
    models["model - thin"].root.LeftLeg.LBULeftLeg,
    models["model - thin"].root.LeftLeg.LFULeftLeg,
    models["model - thin"].root.LeftLeg.LLegLower.LFLLeftLeg
})

membrane:define(models["model - thin"].root.Membranes.Membrane12, {
    models["model - thin"].root.LeftLeg.LLegLower.LBLRightLeg,
    models["model - thin"].root.LeftLeg.LBURightLeg,
    models["model - thin"].root.LeftLeg.LFURightLeg,
    models["model - thin"].root.LeftLeg.LLegLower.LFLRightLeg
})

membrane:define(models["model - thin"].root.Membranes.Membrane13, {
    models["model - thin"].root.RightLeg.RFURightLeg,
    models["model - thin"].root.RightLeg.RLegLower.RFLRightLeg,
    models["model - thin"].root.RightLeg.RLegLower.RFLLeftLeg,
    models["model - thin"].root.RightLeg.RFULeftLeg
})

membrane:define(models["model - thin"].root.Membranes.Membrane14, {
    models["model - thin"].root.RightLeg.RBURightLeg,
    models["model - thin"].root.RightLeg.RLegLower.RBLRightLeg,
    models["model - thin"].root.RightLeg.RLegLower.RBLLeftLeg,
    models["model - thin"].root.RightLeg.RBULeftLeg
})

membrane:define(models["model - thin"].root.Membranes.Membrane15, {
    models["model - thin"].root.RightLeg.RLegLower.RBLLeftLeg,
    models["model - thin"].root.RightLeg.RBULeftLeg,
    models["model - thin"].root.RightLeg.RFULeftLeg,
    models["model - thin"].root.RightLeg.RLegLower.RFLLeftLeg
})

membrane:define(models["model - thin"].root.Membranes.Membrane16, {
    models["model - thin"].root.RightLeg.RLegLower.RBLRightLeg,
    models["model - thin"].root.RightLeg.RBURightLeg,
    models["model - thin"].root.RightLeg.RFURightLeg,
    models["model - thin"].root.RightLeg.RLegLower.RFLRightLeg
})

membrane:define(models["model - thin"].root.Membranes.Membrane17, {
    models["model - thin"].root.Body.BFURight,
    models["model - thin"].root.Body.chest.BFLRight,
    models["model - thin"].root.Body.chest.BFLLeft,
    models["model - thin"].root.Body.BFULeft
})

membrane:define(models["model - thin"].root.Membranes.Membrane18, {
    models["model - thin"].root.Body.BBURight,
    models["model - thin"].root.Body.chest.BBLRight,
    models["model - thin"].root.Body.chest.BBLLeft,
    models["model - thin"].root.Body.BBULeft
})

membrane:define(models["model - thin"].root.Membranes.Membrane19, {
    models["model - thin"].root.Body.chest.BBLLeft,
    models["model - thin"].root.Body.BBULeft,
    models["model - thin"].root.Body.BFULeft,
    models["model - thin"].root.Body.chest.BFLLeft
})

membrane:define(models["model - thin"].root.Membranes.Membrane20, {
    models["model - thin"].root.Body.chest.BBLRight,
    models["model - thin"].root.Body.BBURight,
    models["model - thin"].root.Body.BFURight,
    models["model - thin"].root.Body.chest.BFLRight
})
