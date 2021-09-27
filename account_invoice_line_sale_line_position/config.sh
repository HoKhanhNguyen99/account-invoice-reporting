BACKUP=
BACKUP_REPO=
ODOO_USER=odoo
OD_VER=14
ODOO_PATH=/opt/odoo/${OD_VER}
ODOO_VENV=/opt/odoo/${OD_VER}_env
ODOO_FILESTORE=~/.local/share/Odoo/filestore
OCA_REPO_FOLDER=~/trobz/oca
MIG_MODULE=account_invoice_line_sale_line_position
REPO=account-invoice-reporting
REPO_MODULES=account_comment_template,account_invoice_line_report,account_invoice_report_due_list
# Uncomment for overriding
# OCA_REPOS=${REPO}
GH_NAME=HoKhanhNguyen99
DB_SUFFIX=accntivcelinesalelinepstn
SRC_BR=13.0
TGT_VER=14.0

# Uncomment to debug
# DEBUG=echo

# Uncomment to enable workers
# 2 workers do not work well with coverage
# WORKERS="-d od${OD_VER}_demo_${DB_SUFFIX} --workers=0 --load=base,queue_job"
DEP_TREE=`cat <<EOF
account_invoice_line_sale_line_position (14.0.1.0.0)
    └── sale_order_line_position (14.0.1.0.0)
        └── sale (14.0+c)
            ├── payment (14.0+c)
            │   └── account (14.0+c)
            │       ├── analytic (14.0+c)
            │       │   ├── mail (14.0+c)
            │       │   │   ├── base_setup (14.0+c)
            │       │   │   │   └── web (14.0+c)
            │       │   │   ├── bus (14.0+c)
            │       │   │   │   └── web ⬆
            │       │   │   └── web_tour (14.0+c)
            │       │   │       └── web ⬆
            │       │   └── uom (14.0+c)
            │       ├── base_setup ⬆
            │       ├── digest (14.0+c)
            │       │   ├── mail ⬆
            │       │   ├── portal (14.0+c)
            │       │   │   ├── auth_signup (14.0+c)
            │       │   │   │   ├── base_setup ⬆
            │       │   │   │   ├── mail ⬆
            │       │   │   │   └── web ⬆
            │       │   │   ├── http_routing (14.0+c)
            │       │   │   │   └── web ⬆
            │       │   │   ├── mail ⬆
            │       │   │   ├── web ⬆
            │       │   │   └── web_editor (14.0+c)
            │       │   │       └── web ⬆
            │       │   └── resource (14.0+c)
            │       │       └── web ⬆
            │       ├── portal ⬆
            │       └── product (14.0+c)
            │           ├── mail ⬆
            │           └── uom ⬆
            ├── portal ⬆
            ├── sales_team (14.0+c)
            │   └── mail ⬆
            └── utm (14.0+c)
                └── web ⬆
EOF
`
INIT_MODULES=sale_order_line_position
INIT_REPO_MODULES=account,base_comment_template
