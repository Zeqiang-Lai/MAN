from hsir.schedule import TrainSchedule

gaussian = TrainSchedule(
    max_epochs=80,
    base_lr=1e-3,
    lr_schedule={
        0: 1e-3,
        1: 5e-4,
        20: 1e-4,
        30: 1e-3,
        45: 1e-4,
        55: 5e-5,
        60: 1e-5,
        65: 5e-6,
        75: 1e-6,
    },
)

complex = TrainSchedule(
    max_epochs=110,
    base_lr=1e-4,
    lr_schedule={
        80: 1e-4,
        85: 5e-5,
        90: 1e-5,
        95: 5e-6,
        100: 1e-6
    },
)