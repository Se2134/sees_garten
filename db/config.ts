/**import { column, defineDb, defineTable } from 'astro:db';


const Plants = defineTable({
  columns: {
    idplants: column.number({primaryKey: true, autoIncrement: true}),
    name: column.text({default: "N/A"}),
    lat_name: column.text({default: "N/A"}),
    order: column.text({default: "N/A"}),
    family: column.text({default: "N/A"}),
    subfamily: column.text({default: "N/A"}),
    genus: column.text({default: "N/A"}),
    species: column.text({default: "N/A"}),
    subspecies: column.text({default: "N/A"}),
    origin: column.text({default: "N/A"}),
    got: column.date({default: new Date(1, 1, 1)}),

    location: column.text({default: "N/A"}),
    substrate: column.text({default: "N/A"}),
    watering: column.text({default: "N/A"}),
    fertilizing: column.text({default: "N/A"}),
    repotted: column.date({default: new Date(1, 1, 1)}),

    health: column.text({default: "N/A"}),
    price: column.number({default: 0}),

    picturePath: column.text({default: "N/A"}),
    notes: column.text({default: "N/A"})
  }
})

const MyProjects = defineTable({
  columns: {
    idprojects: column.number({primaryKey: true}),
    name: column.text({default: "N/A"}),
    type: column.text({default: "N/A"}),
    care: column.text({default: "N/A"}),

    build: column.date({default: new Date(1, 1, 1)}),
    picturePath: column.text({default: "N/A"}),
    notes: column.text({default: "N/A"})
  }
})

const Animals = defineTable({
  columns: {
    idanimals: column.number({primaryKey: true}),
    name: column.text({default: "N/A"}),
    lat_name: column.text({default: "N/A"}),
    order: column.text({default: "N/A"}),
    family: column.text({default: "N/A"}),
    subfamily: column.text({default: "N/A"}),
    genus: column.text({default: "N/A"}),
    species: column.text({default: "N/A"}),
    subspecies: column.text({default: "N/A"}),
    origin: column.text({default: "N/A"}),

    got: column.date({default: new Date(1, 1, 1)}),
    count: column.number({default: 1}),
    sex: column.text({default: "N/A"}),
    size: column.text({default: "N/A"}),
    age: column.text({default: "N/A"}),
    food: column.text({default: "N/A"}),
    health: column.text({default: "N/A"}),
    demands: column.text({default: "N/A"}),
    sozial: column.text({default: "N/A"}),
    reproduction: column.text({default: "N/A"}),

    price: column.number({default: 0}),
    picturePath: column.text({default: "N/A"}),
    notes: column.text({default: "N/A"})
  }
})

const Equipment = defineTable({
  columns: {
    idequipment: column.number({primaryKey: true}),
    name: column.text({default: "N/A"}),
    type: column.text({default: "N/A"}),
    power: column.text({default: "N/A"}),
    specifications: column.text({default: "N/A"}),
    maintinance: column.text({default: "N/A"}),

    price: column.text({default: "N/A"}),
    link: column.text({default: "N/A"}),
    picturePath: column.text({default: "N/A"}),
    notes: column.text({default: "N/A"})
  }
})

const Enums = defineTable({
  columns: {
    idenums: column.number({primaryKey: true}),
    enumType: column.text({default: "N/A"}),
    enumValue: column.text({default: "N/A"}),
  }
})

const ContainerForProject = defineTable({
  columns: {
    project: column.number({references: () => MyProjects.columns.idprojects, default: 1}),
    container: column.number({references: () => Equipment.columns.idequipment, default: 1}),
  }
})

const PlantForProject = defineTable({
  columns: {
    project: column.number({references: () => MyProjects.columns.idprojects, default: 1}),
    plant: column.number({references: () => Plants.columns.idplants, default: 1}),
  }
})

const AnimalForProject = defineTable({
  columns: {
    project: column.number({references: () => MyProjects.columns.idprojects, default: 1}),
    animal: column.number({references: () => Animals.columns.idanimals, default: 1}),
  }
})

const SubstrateForProject = defineTable({
  columns: {
    project: column.number({references: () => MyProjects.columns.idprojects, default: 1}),
    substrate: column.number({references: () => Equipment.columns.idequipment, default: 1}),
  }
})

const HardscapeForProject = defineTable({
  columns: {
    project: column.number({references: () => MyProjects.columns.idprojects, default: 1}),
    hardscape: column.number({references: () => Equipment.columns.idequipment, default: 1}),
  }
})

const EquipmentForProject = defineTable({
  columns: {
    project: column.number({references: () => MyProjects.columns.idprojects, default: 1}),
    equipment: column.number({references: () => Equipment.columns.idequipment, default: 1}),
  }
})

// https://astro.build/db/config
export default defineDb({
  tables: { Plants, Animals, Equipment, MyProjects, Enums, ContainerForProject, PlantForProject, AnimalForProject, SubstrateForProject, HardscapeForProject, EquipmentForProject },
});
**/