from odoo import models, fields

class ResPartner(models.Model):
    _inherit = 'res.partner'

    vip_level = fields.Selection(
        [('standard', 'Standard'), ('vip', 'VIP')],
        string='VIP Level',
        default='standard',
        help='VIP level of the customer',
)