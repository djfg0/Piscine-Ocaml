# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/10 00:22:41 by fguarrac          #+#    #+#              #
#    Updated: 2026/09/11 15:25:07 by fguarrac         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.DEFAULT_GOAL := all

NAME		= life

MODULES		= nucleotides helix rna ribosome
INTERFACE	= $(MODULES:=.mli) $(NAME).mli
INT			= $(INTERFACE:.mli=.cmi)
SRC			= $(MODULES:=.ml) $(NAME).ml main.ml
OBJ			= $(SRC:.ml=.cmx)

OCAMLOPT	= $(shell which ocamlopt)
OCAMLDEP	= $(shell which ocamldep)
RM			= $(shell which rm)

%.cmi: %.mli
	$(OCAMLOPT) -c $< -o $@

%.cmx: %.ml
	$(OCAMLOPT) -c $< -o $@

$(NAME): $(SRC) $(INTERFACE) $(INT) $(OBJ)
	$(OCAMLOPT) $(OBJ) -o $(NAME)

.PHONY: all
all: depend
	@$(MAKE) --no-print-directory -e $(NAME)

.PHONY : depend
depend : .depend

.depend: $(SRC) $(INTERFACE)
	$(OCAMLDEP) $(SRC) $(INTERFACE) > $@

ifneq ($(filter fclean clean re,$(MAKECMDGOALS)),)
else
-include .depend
endif

.PHONY: clean
clean:
ifneq ("$(wildcard *.o)", "")
	$(RM) -f *.o
endif
ifneq ("$(wildcard *.cm*)", "")
	$(RM) -f *.cm*
endif
ifneq ("$(wildcard .depend)", "")
	$(RM) -f .depend
endif

.PHONY: fclean
fclean: clean
ifneq ("$(wildcard $(NAME))", "")
	$(RM) -f $(NAME)
endif

.PHONY: re
re: fclean
	@$(MAKE) --no-print-directory
