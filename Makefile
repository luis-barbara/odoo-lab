DB ?= lab
m  ?= sale_vip_discount

.PHONY: up down restart logs update test

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart odoo

logs:
	docker compose logs -f --tail 50 odoo

update:
	docker compose run --rm odoo odoo -d $(DB) -u $(m) --stop-after-init
	docker compose restart odoo

test:
	docker compose run --rm odoo odoo -d $(DB) -u $(m) --test-enable --test-tags /$(m) --stop-after-init