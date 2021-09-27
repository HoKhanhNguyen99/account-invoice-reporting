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
