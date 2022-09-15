"""create items table

Revision ID: f6b8b4c29097
Revises: 
Create Date: 2022-09-15 16:08:48.987787

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'f6b8b4c29097'
down_revision = None
branch_labels = None
depends_on = None


def upgrade() -> None:
    op.create_table(
        'items',
        sa.Column('id', sa.Integer, primary_key=True,unique=True),
        sa.Column('name', sa.String(100), unique=True),
    )


def downgrade() -> None:
    op.drop_table('items')
