import { db, Plants, Animals, Equipment, MyProjects } from 'astro:db';

// https://astro.build/db/seed
export default async function seed() {

	await db.insert(Plants).values([
		{name: "Monstera Deliciosa", genus: "Monsteraoideae",},
		{name: "Philodendron Verrucosum", genus: "Philodendreae",}
	])

	await db.insert(Animals).values([
		{name: "Honiggurami", genus: "Labyrinthfish",},
		{name: "Perlhuhnbärbling", genus: "Rasbora",}
	])

	await db.insert(Equipment).values([
		{name: "Aquarium 120L", type: "Container",},
		{name: "Aeroid Mix", type: "Substrate",},
	])

	await db.insert(MyProjects).values([
		{name: "Altes AQ 2.0", type: "Aquarium"},
	])
}
